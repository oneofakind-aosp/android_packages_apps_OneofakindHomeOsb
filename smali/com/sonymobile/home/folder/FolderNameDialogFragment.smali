.class public Lcom/sonymobile/home/folder/FolderNameDialogFragment;
.super Lcom/sonymobile/home/HomeDialogFragment;
.source "FolderNameDialogFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private mEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonymobile/home/HomeDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/folder/FolderNameDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/FolderNameDialogFragment;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonymobile/home/folder/FolderNameDialogFragment;->notifyNameChange()V

    return-void
.end method

.method public static newInstance(IILjava/lang/String;)Lcom/sonymobile/home/folder/FolderNameDialogFragment;
    .locals 3
    .param p0, "actionId"    # I
    .param p1, "titleResId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v1, Lcom/sonymobile/home/folder/FolderNameDialogFragment;

    invoke-direct {v1}, Lcom/sonymobile/home/folder/FolderNameDialogFragment;-><init>()V

    .line 34
    .local v1, "fragmentDialog":Lcom/sonymobile/home/folder/FolderNameDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "actionId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    const-string v2, "titleId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    const-string v2, "message"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v0}, Lcom/sonymobile/home/folder/FolderNameDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    return-object v1
.end method

.method private notifyNameChange()V
    .locals 4

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/FolderNameDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "actionId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 111
    .local v0, "actionCode":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "message"

    iget-object v3, p0, Lcom/sonymobile/home/folder/FolderNameDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/folder/FolderNameDialogFragment;->notifyDialogButtonClicked(ILandroid/os/Bundle;)V

    .line 114
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/FolderNameDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "titleId"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 48
    .local v7, "titleId":I
    if-eqz p1, :cond_0

    .line 49
    const-string v1, "message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "message":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/FolderNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f08004d

    new-instance v4, Lcom/sonymobile/home/folder/FolderNameDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/sonymobile/home/folder/FolderNameDialogFragment$2;-><init>(Lcom/sonymobile/home/folder/FolderNameDialogFragment;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f08004a

    new-instance v4, Lcom/sonymobile/home/folder/FolderNameDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/sonymobile/home/folder/FolderNameDialogFragment$1;-><init>(Lcom/sonymobile/home/folder/FolderNameDialogFragment;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 72
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/sonymobile/home/folder/FolderNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/home/folder/FolderNameDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 73
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderNameDialogFragment;->mEditText:Landroid/widget/EditText;

    const/16 v3, 0x4001

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 74
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderNameDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderNameDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 77
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/FolderNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b00cb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 79
    .local v2, "padding":I
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderNameDialogFragment;->mEditText:Landroid/widget/EditText;

    const/4 v5, 0x0

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 82
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderNameDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 83
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 85
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderNameDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 87
    return-object v0

    .line 51
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "padding":I
    .end local v6    # "message":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/FolderNameDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "message"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "message":Ljava/lang/String;
    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 101
    const/4 v0, 0x6

    if-ne v0, p2, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/FolderNameDialogFragment;->dismiss()V

    .line 103
    invoke-direct {p0}, Lcom/sonymobile/home/folder/FolderNameDialogFragment;->notifyNameChange()V

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/sonymobile/home/HomeDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderNameDialogFragment;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "message"

    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderNameDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method
