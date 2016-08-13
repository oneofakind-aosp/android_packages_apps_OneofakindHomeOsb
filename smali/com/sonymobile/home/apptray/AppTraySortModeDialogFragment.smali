.class public Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;
.super Lcom/sonymobile/home/HomeDialogFragment;
.source "AppTraySortModeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment$3;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sonymobile/home/HomeDialogFragment;-><init>()V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;ILandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;->notifyDialogButtonClicked(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static convertIndexToSortMode(ILandroid/content/Context;)Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    .locals 5
    .param p0, "index"    # I
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 132
    .local v0, "res":Landroid/content/res/Resources;
    const v3, 0x7f090001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "sortModeStrArray":[Ljava/lang/String;
    if-ltz p0, :cond_0

    array-length v3, v2

    if-lt p0, v3, :cond_1

    .line 134
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal sort mode index."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 138
    :cond_1
    aget-object v3, v2, p0

    const v4, 0x7f080078

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    sget-object v1, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->MOST_USED:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .line 151
    .local v1, "sortMode":Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    :goto_0
    return-object v1

    .line 141
    .end local v1    # "sortMode":Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    :cond_2
    aget-object v3, v2, p0

    const v4, 0x7f080077

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 142
    sget-object v1, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->ALPHABETICAL:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .restart local v1    # "sortMode":Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    goto :goto_0

    .line 144
    .end local v1    # "sortMode":Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    :cond_3
    aget-object v3, v2, p0

    const v4, 0x7f08007a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 145
    sget-object v1, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->RECENTLY_INSTALLED:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .restart local v1    # "sortMode":Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    goto :goto_0

    .line 148
    .end local v1    # "sortMode":Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    :cond_4
    sget-object v1, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->OWN_ORDER:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .restart local v1    # "sortMode":Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    goto :goto_0
.end method

.method private static convertSortModeToIndex(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;Landroid/content/Context;)I
    .locals 5
    .param p0, "sortMode"    # Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 83
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x7f090001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "sortModeStrArray":[Ljava/lang/String;
    sget-object v3, Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment$3;->$SwitchMap$com$sonymobile$home$apptray$AppTrayPreferenceManager$SortMode:[I

    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 108
    const/4 v0, -0x1

    .line 112
    .local v0, "index":I
    :goto_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 113
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal sort mode."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 88
    .end local v0    # "index":I
    :pswitch_0
    const v3, 0x7f080078

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;->findIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 90
    .restart local v0    # "index":I
    goto :goto_0

    .line 93
    .end local v0    # "index":I
    :pswitch_1
    const v3, 0x7f080077

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;->findIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 95
    .restart local v0    # "index":I
    goto :goto_0

    .line 98
    .end local v0    # "index":I
    :pswitch_2
    const v3, 0x7f08007a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;->findIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 100
    .restart local v0    # "index":I
    goto :goto_0

    .line 103
    .end local v0    # "index":I
    :pswitch_3
    const v3, 0x7f080079

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;->findIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 105
    .restart local v0    # "index":I
    goto :goto_0

    .line 116
    :cond_0
    return v0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static findIndex([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "strArray"    # [Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 163
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 162
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static newInstance(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;Landroid/content/Context;)Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;
    .locals 4
    .param p0, "sortMode"    # Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    new-instance v1, Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;

    invoke-direct {v1}, Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;-><init>()V

    .line 36
    .local v1, "fragment":Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;
    invoke-static {p0, p1}, Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;->convertSortModeToIndex(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;Landroid/content/Context;)I

    move-result v2

    .line 37
    .local v2, "index":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "selectedRadioButtonIndex"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    invoke-virtual {v1, v0}, Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "selectedRadioButtonIndex"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 47
    .local v0, "index":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08007b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090001

    new-instance v3, Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment$2;-><init>(Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08004a

    new-instance v3, Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment$1;-><init>(Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
