.class public Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;
.super Landroid/preference/Preference;
.source "PageTransitionPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageTransitionPreference"
.end annotation


# instance fields
.field private final mAnimationDrawableResId:I

.field private mChecked:Z

.field private mImageView:Landroid/widget/ImageView;

.field private mRadioButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "animationDrawableResId"    # I
    .param p3, "title"    # I
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "checked"    # Z

    .prologue
    .line 143
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 144
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->setLayoutResource(I)V

    .line 145
    const v0, 0x7f020093

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->setIcon(I)V

    .line 146
    invoke-virtual {p0, p3}, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->setTitle(I)V

    .line 147
    invoke-virtual {p0, p4}, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->setKey(Ljava/lang/String;)V

    .line 148
    iput p2, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->mAnimationDrawableResId:I

    .line 149
    iput-boolean p5, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->mChecked:Z

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->preferenceSelectionChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->mChecked:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->updatePreviewAnimation(Z)V

    return-void
.end method

.method private preferenceSelectionChanged(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->mChecked:Z

    .line 176
    iget-object v0, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 177
    invoke-direct {p0, p1}, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->updatePreviewAnimation(Z)V

    .line 178
    return-void
.end method

.method private updatePreviewAnimation(Z)V
    .locals 2
    .param p1, "shouldRunAnimation"    # Z

    .prologue
    .line 186
    iget-object v1, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 189
    .local v0, "frameAnimation":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 194
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 156
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->mImageView:Landroid/widget/ImageView;

    .line 157
    iget-object v0, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->mImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->mAnimationDrawableResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 158
    const v0, 0x7f0f00c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 159
    iget-object v0, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 161
    new-instance v0, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference$1;-><init>(Lcom/sonymobile/home/settings/PageTransitionPreferenceActivity$PageTransitionFragment$PageTransitionPreference;)V

    const-wide/16 v2, 0x190

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    return-void
.end method
