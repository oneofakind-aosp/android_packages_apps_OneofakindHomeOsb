.class public Lcom/sonymobile/home/permissions/WelcomeScreenFragment;
.super Landroid/app/Fragment;
.source "WelcomeScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/permissions/WelcomeScreenFragment$WelcomeScreenListener;
    }
.end annotation


# instance fields
.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mPrivacyTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 84
    new-instance v0, Lcom/sonymobile/home/permissions/WelcomeScreenFragment$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/permissions/WelcomeScreenFragment$1;-><init>(Lcom/sonymobile/home/permissions/WelcomeScreenFragment;)V

    iput-object v0, p0, Lcom/sonymobile/home/permissions/WelcomeScreenFragment;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/permissions/WelcomeScreenFragment;)Lcom/sonymobile/home/permissions/WelcomeScreenFragment$WelcomeScreenListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/permissions/WelcomeScreenFragment;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sonymobile/home/permissions/WelcomeScreenFragment;->getListener()Lcom/sonymobile/home/permissions/WelcomeScreenFragment$WelcomeScreenListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/permissions/WelcomeScreenFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/permissions/WelcomeScreenFragment;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sonymobile/home/permissions/WelcomeScreenFragment;->showPersonalDataDialog()V

    return-void
.end method

.method private createClickableSpan(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V
    .locals 6
    .param p1, "ssb"    # Landroid/text/SpannableStringBuilder;
    .param p2, "span"    # Landroid/text/style/URLSpan;

    .prologue
    .line 130
    invoke-direct {p0, p2}, Lcom/sonymobile/home/permissions/WelcomeScreenFragment;->getClickableSpan(Landroid/text/style/URLSpan;)Landroid/text/style/ClickableSpan;

    move-result-object v0

    .line 131
    .local v0, "clickableSpan":Landroid/text/style/ClickableSpan;
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 132
    .local v4, "start":I
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 133
    .local v2, "end":I
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    .line 134
    .local v3, "flags":I
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 135
    invoke-virtual {p1, v0, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 136
    iget-object v5, p0, Lcom/sonymobile/home/permissions/WelcomeScreenFragment;->mPrivacyTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLinkTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 137
    .local v1, "color":I
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1, v5, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 138
    return-void
.end method

.method private createClickableText()Ljava/lang/CharSequence;
    .locals 10

    .prologue
    .line 116
    const v7, 0x7f0800ca

    invoke-virtual {p0, v7}, Lcom/sonymobile/home/permissions/WelcomeScreenFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 118
    .local v2, "legalInfoString":Ljava/lang/CharSequence;
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 119
    .local v5, "ssb":Landroid/text/SpannableStringBuilder;
    const/4 v7, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-class v9, Landroid/text/style/URLSpan;

    invoke-virtual {v5, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/URLSpan;

    .line 121
    .local v6, "urls":[Landroid/text/style/URLSpan;
    move-object v0, v6

    .local v0, "arr$":[Landroid/text/style/URLSpan;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 122
    .local v4, "span":Landroid/text/style/URLSpan;
    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    const-string v8, "home://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 123
    invoke-direct {p0, v5, v4}, Lcom/sonymobile/home/permissions/WelcomeScreenFragment;->createClickableSpan(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V

    .line 121
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v4    # "span":Landroid/text/style/URLSpan;
    :cond_1
    return-object v5
.end method

.method private getClickableSpan(Landroid/text/style/URLSpan;)Landroid/text/style/ClickableSpan;
    .locals 1
    .param p1, "span"    # Landroid/text/style/URLSpan;

    .prologue
    .line 141
    new-instance v0, Lcom/sonymobile/home/permissions/WelcomeScreenFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/home/permissions/WelcomeScreenFragment$2;-><init>(Lcom/sonymobile/home/permissions/WelcomeScreenFragment;Landroid/text/style/URLSpan;)V

    return-object v0
.end method

.method private getListener()Lcom/sonymobile/home/permissions/WelcomeScreenFragment$WelcomeScreenListener;
    .locals 2

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "listener":Lcom/sonymobile/home/permissions/WelcomeScreenFragment$WelcomeScreenListener;
    invoke-virtual {p0}, Lcom/sonymobile/home/permissions/WelcomeScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/sonymobile/home/permissions/WelcomeScreenFragment$WelcomeScreenListener;

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/sonymobile/home/permissions/WelcomeScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .end local v0    # "listener":Lcom/sonymobile/home/permissions/WelcomeScreenFragment$WelcomeScreenListener;
    check-cast v0, Lcom/sonymobile/home/permissions/WelcomeScreenFragment$WelcomeScreenListener;

    .line 112
    .restart local v0    # "listener":Lcom/sonymobile/home/permissions/WelcomeScreenFragment$WelcomeScreenListener;
    :cond_0
    return-object v0
.end method

.method private init(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 76
    const v0, 0x7f0f00d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/home/permissions/WelcomeScreenFragment;->mPrivacyTextView:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/sonymobile/home/permissions/WelcomeScreenFragment;->mPrivacyTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 80
    const v0, 0x7f0f00d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/permissions/WelcomeScreenFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v0, 0x7f0f00d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/permissions/WelcomeScreenFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method public static newInstance()Lcom/sonymobile/home/permissions/WelcomeScreenFragment;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/sonymobile/home/permissions/WelcomeScreenFragment;

    invoke-direct {v0}, Lcom/sonymobile/home/permissions/WelcomeScreenFragment;-><init>()V

    return-object v0
.end method

.method private showPersonalDataDialog()V
    .locals 3

    .prologue
    .line 152
    invoke-static {}, Lcom/sonymobile/home/permissions/PersonalDataDialog;->newInstance()Lcom/sonymobile/home/permissions/PersonalDataDialog;

    move-result-object v0

    .line 153
    .local v0, "dialog":Lcom/sonymobile/home/permissions/PersonalDataDialog;
    invoke-virtual {p0}, Lcom/sonymobile/home/permissions/WelcomeScreenFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/permissions/PersonalDataDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 154
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    const v0, 0x7f03003d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 102
    iget-object v0, p0, Lcom/sonymobile/home/permissions/WelcomeScreenFragment;->mPrivacyTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sonymobile/home/permissions/WelcomeScreenFragment;->createClickableText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sonymobile/home/permissions/WelcomeScreenFragment;->init(Landroid/view/View;)V

    .line 68
    return-void
.end method
