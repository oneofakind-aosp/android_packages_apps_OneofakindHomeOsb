.class public Lcom/sonymobile/home/search/binding/GooglePlayDataBinder;
.super Lcom/sonymobile/home/search/binding/SearchViewDataBinder;
.source "GooglePlayDataBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mColoredSpan:Landroid/text/style/ForegroundColorSpan;

.field private final mLabel:Landroid/widget/TextView;

.field private final mListener:Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;

.field private mSearchText:Ljava/lang/String;

.field private final mUserSettings:Lcom/sonymobile/home/settings/UserSettings;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;
    .param p3, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/binding/SearchViewDataBinder;-><init>(Landroid/view/View;)V

    move-object v0, p1

    .line 53
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/home/search/binding/GooglePlayDataBinder;->mLabel:Landroid/widget/TextView;

    .line 54
    iput-object p3, p0, Lcom/sonymobile/home/search/binding/GooglePlayDataBinder;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 55
    iput-object p2, p0, Lcom/sonymobile/home/search/binding/GooglePlayDataBinder;->mListener:Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;

    .line 57
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0}, Lcom/sonymobile/home/search/binding/GooglePlayDataBinder;->getHighlightColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/home/search/binding/GooglePlayDataBinder;->mColoredSpan:Landroid/text/style/ForegroundColorSpan;

    .line 58
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-direct {p0}, Lcom/sonymobile/home/search/binding/GooglePlayDataBinder;->initIcon()V

    .line 61
    return-void
.end method

.method private static changeAlpha(II)I
    .locals 2
    .param p0, "alpha"    # I
    .param p1, "color"    # I

    .prologue
    .line 82
    shl-int/lit8 v0, p0, 0x18

    const v1, 0xffffff

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    return v0
.end method

.method private getHighlightColor()I
    .locals 2

    .prologue
    .line 71
    const/16 v0, 0xb2

    iget-object v1, p0, Lcom/sonymobile/home/search/binding/GooglePlayDataBinder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonymobile/home/search/binding/GooglePlayDataBinder;->changeAlpha(II)I

    move-result v0

    return v0
.end method

.method private initIcon()V
    .locals 3

    .prologue
    .line 64
    iget-object v1, p0, Lcom/sonymobile/home/search/binding/GooglePlayDataBinder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 66
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 67
    iget-object v1, p0, Lcom/sonymobile/home/search/binding/GooglePlayDataBinder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 68
    return-void
.end method


# virtual methods
.method public bind(Lcom/sonymobile/home/search/entry/SearchEntry;)V
    .locals 7
    .param p1, "searchEntry"    # Lcom/sonymobile/home/search/entry/SearchEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 98
    const-class v4, Lcom/sonymobile/home/search/entry/GooglePlayEntry;

    invoke-virtual {p0, p1, v4}, Lcom/sonymobile/home/search/binding/GooglePlayDataBinder;->checkSearchEntryTypeAndThrow(Lcom/sonymobile/home/search/entry/SearchEntry;Ljava/lang/Class;)V

    move-object v1, p1

    .line 99
    check-cast v1, Lcom/sonymobile/home/search/entry/GooglePlayEntry;

    .line 100
    .local v1, "entry":Lcom/sonymobile/home/search/entry/GooglePlayEntry;
    invoke-virtual {v1}, Lcom/sonymobile/home/search/entry/GooglePlayEntry;->getSearchText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/home/search/binding/GooglePlayDataBinder;->mSearchText:Ljava/lang/String;

    .line 101
    invoke-virtual {v1}, Lcom/sonymobile/home/search/entry/GooglePlayEntry;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "fullText":Ljava/lang/String;
    const-string v4, "%1$s"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 104
    .local v3, "startIndex":I
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sonymobile/home/search/binding/GooglePlayDataBinder;->mSearchText:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 105
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 107
    .local v0, "coloredSpan":Landroid/text/Spannable;
    iget-object v4, p0, Lcom/sonymobile/home/search/binding/GooglePlayDataBinder;->mColoredSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lcom/sonymobile/home/search/binding/GooglePlayDataBinder;->mSearchText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    const/16 v6, 0x21

    invoke-interface {v0, v4, v3, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 110
    iget-object v4, p0, Lcom/sonymobile/home/search/binding/GooglePlayDataBinder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonymobile/home/search/binding/GooglePlayDataBinder;->mListener:Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "SearchGooglePlayClicked"

    iget-object v1, p0, Lcom/sonymobile/home/search/binding/GooglePlayDataBinder;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-static {v0, v1}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->trackOnlineSearchAction(Ljava/lang/String;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 92
    iget-object v0, p0, Lcom/sonymobile/home/search/binding/GooglePlayDataBinder;->mListener:Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;

    iget-object v1, p0, Lcom/sonymobile/home/search/binding/GooglePlayDataBinder;->mSearchText:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonymobile/home/search/entry/GooglePlayEntry;->formatQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;->onSuggestionClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method
