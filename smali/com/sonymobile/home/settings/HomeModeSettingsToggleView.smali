.class public Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;
.super Landroid/widget/LinearLayout;
.source "HomeModeSettingsToggleView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;Landroid/widget/RadioGroup;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;
    .param p1, "x1"    # Landroid/widget/RadioGroup;
    .param p2, "x2"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;->updateInformationText(Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method private getRadioGroup()Landroid/widget/RadioGroup;
    .locals 1

    .prologue
    .line 100
    const v0, 0x7f0f00ac

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    return-object v0
.end method

.method private updateInformationText(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 63
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/settings/ValuedRadioButton;

    .line 65
    .local v0, "button":Lcom/sonymobile/home/settings/ValuedRadioButton;
    const v2, 0x7f0f00ad

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 67
    .local v1, "infoTextView":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/sonymobile/home/settings/ValuedRadioButton;->getValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    const v2, 0x7f0800ae

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    const v2, 0x7f0800b0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private updateModeEnabled(Landroid/widget/RadioGroup;Z)V
    .locals 5
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "enabled"    # Z

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    .line 86
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 87
    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 88
    .local v2, "view":Landroid/view/View;
    instance-of v4, v2, Lcom/sonymobile/home/settings/ValuedRadioButton;

    if-eqz v4, :cond_1

    move-object v4, v2

    .line 89
    check-cast v4, Lcom/sonymobile/home/settings/ValuedRadioButton;

    invoke-virtual {v4}, Lcom/sonymobile/home/settings/ValuedRadioButton;->getValue()Z

    move-result v4

    if-ne v4, p2, :cond_1

    .line 90
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    .line 91
    .local v3, "viewId":I
    invoke-virtual {p1, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 92
    invoke-direct {p0, p1, v3}, Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;->updateInformationText(Landroid/widget/RadioGroup;I)V

    .line 97
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "viewId":I
    :cond_0
    return-void

    .line 86
    .restart local v2    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isModeEnabled()Z
    .locals 4

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;->getRadioGroup()Landroid/widget/RadioGroup;

    move-result-object v2

    .line 79
    .local v2, "radioGroup":Landroid/widget/RadioGroup;
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    .line 80
    .local v1, "checkedRadioButtonId":I
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/settings/ValuedRadioButton;

    .line 81
    .local v0, "button":Lcom/sonymobile/home/settings/ValuedRadioButton;
    invoke-virtual {v0}, Lcom/sonymobile/home/settings/ValuedRadioButton;->getValue()Z

    move-result v3

    return v3
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 49
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->isAutomaticDesktopMode(Landroid/content/Context;)Z

    move-result v1

    .line 51
    .local v1, "selected":Z
    invoke-direct {p0}, Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;->getRadioGroup()Landroid/widget/RadioGroup;

    move-result-object v0

    .line 52
    .local v0, "radioGroup":Landroid/widget/RadioGroup;
    invoke-direct {p0, v0, v1}, Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;->updateModeEnabled(Landroid/widget/RadioGroup;Z)V

    .line 54
    new-instance v2, Lcom/sonymobile/home/settings/HomeModeSettingsToggleView$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/settings/HomeModeSettingsToggleView$1;-><init>(Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 60
    return-void
.end method
