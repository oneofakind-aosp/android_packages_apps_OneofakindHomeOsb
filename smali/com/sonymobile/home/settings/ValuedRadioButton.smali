.class public Lcom/sonymobile/home/settings/ValuedRadioButton;
.super Landroid/widget/RadioButton;
.source "ValuedRadioButton.java"


# instance fields
.field private mValue:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/settings/ValuedRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/home/settings/ValuedRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/ValuedRadioButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/home/R$styleable;->ValuedRadioButton:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    .local v0, "typedAttributes":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/sonymobile/home/settings/ValuedRadioButton;->initStyledAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    return-void

    .line 45
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private initStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 1
    .param p1, "typedAttributes"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/home/settings/ValuedRadioButton;->mValue:Z

    .line 74
    return-void
.end method


# virtual methods
.method public getValue()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sonymobile/home/settings/ValuedRadioButton;->mValue:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/widget/RadioButton;->onFinishInflate()V

    .line 64
    new-instance v0, Lcom/sonymobile/home/settings/ValuedRadioButton$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/settings/ValuedRadioButton$1;-><init>(Lcom/sonymobile/home/settings/ValuedRadioButton;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/settings/ValuedRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method
